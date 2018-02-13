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
        private static int tempImportancy;

        private static Car _fittingCar;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GetData_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
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
            double rating = 0;
            for(int i = 0;i<2 /*Number of Answers*/;i++)
            {
                switch(i)
                {
                    case 0:
                        if (car.Name.Contains(answers[i+1].AnswerString))
                            rating = 10 * answers[i+1].Importancy;
                        else
                            rating = 0;
                        break;
                    case 1:
                        if (car.HorsePower >= Int32.Parse(answers[i + 1].AnswerString))
                            rating += 10 * answers[i + 1].Importancy;
                        break;
                }
                
            }
            return rating;
        }
        private void ReadAllCarsFromDB()
        {
            string connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\LK\\Desktop\\prototype\\prototype\\App_Data\\Database1.mdf; Integrated Security = True";
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

        protected void Importancy_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            tempImportancy = Int32.Parse(btn.Text);
        }

        protected void next_Click(object sender, EventArgs e)
        {
            if (tempAnswer == null || tempImportancy == 0)
            {
                return;
            }
            else
            {
                if (answers.ContainsKey(MultiView1.ActiveViewIndex))
                    answers.Remove(MultiView1.ActiveViewIndex);
                answers.Add(MultiView1.ActiveViewIndex, new Answer(tempAnswer, tempImportancy));
            }
            tempAnswer = null;
            tempImportancy = 0;
            MultiView1.ActiveViewIndex++;
        }

        protected void Start_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
        }
        
    }
}