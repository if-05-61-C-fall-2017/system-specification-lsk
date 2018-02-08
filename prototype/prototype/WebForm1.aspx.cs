using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prototype
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static List<Car> allCars = new List<Car>();
        private static Dictionary<int, Answer> answers = new Dictionary<int, Answer>();

        private static string tempAnswer;
        private static int tempImportance;

        private static Car _fittingCar;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GetData_Click(object sender, EventArgs e)
        {
            ReadAllCarsFromDB();
            Car fittingCar = FindCar();
            _fittingCar = fittingCar;
            ModellLabel.Text = _fittingCar.Name;
            PSLabel.Text = _fittingCar.HorsePower.ToString();
            PreisLabel.Text = _fittingCar.Price.ToString();
            Div.Visible = true;
        }

        private Car FindCar()
        {
            Car temp = allCars[0];
            double currentCarScore = CheckCar(allCars[0]);
            double maxCarScore = currentCarScore;
            int maxCarScoreIndex = 0;
            for(int i = 0;i<allCars.Count;i++)
            {
                currentCarScore = CheckCar(allCars[i]);
                if(currentCarScore > maxCarScore)
                {
                    maxCarScore = currentCarScore;
                    maxCarScoreIndex = i;
                }
            }
            return allCars[maxCarScoreIndex];

        }
        private double CheckCar(Car car)
        {
            if (car.Name.Contains(answers[1].AnswerString))
                return 10 * answers[1].Importance;
            else
                return 0;
        }
        private void ReadAllCarsFromDB()
        {
            string connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\leons\\Documents\\Projects\\prototype\\prototype\\App_Data\\Database1.mdf; Integrated Security = True";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query = "SELECT * FROM \"Table\"";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                allCars.Add(new Car(reader.GetString(1), reader.GetInt32(2), reader.GetInt32(3)));
            }

        }

        protected void AnswerButton_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            tempAnswer = btn.Text;
        }

        protected void Importance_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            tempImportance = Int32.Parse(btn.Text);
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (tempAnswer == null || tempImportance == 0)
            {
                return;
            }
            else
            {
                if (answers.ContainsKey(1))
                    answers.Remove(1);
                answers.Add(1, new Answer(tempAnswer, tempImportance));
            }
            tempAnswer = null;
            tempImportance = 0;
        }

    }
}