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
            string connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\leons\\Documents\\Git\\system-specification-lsk\\prototype\\prototype\\App_Data\\Database1.mdf; Integrated Security = True";
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






        // NEW DESIGN; LAYOUT AND STUFF
        int maxBudget;
        HashSet<string> prefCarType;

        protected void AnswerButtons(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            switch (MultiView1.ActiveViewIndex)
            {
                case 1:
                    if(btn.Text == "0 - 10000")
                    {
                        maxBudget = 10000;
                    } else if(btn.Text == "10000-50000")
                    {
                        maxBudget = 50000;
                    }
                    else if (btn.Text == "50000-100000")
                    {
                        maxBudget = 100000;
                    }

                    else if (btn.Text == "100000-200000")
                    {
                        maxBudget = 200000;
                    }
                    else if (btn.Text == "200000<")
                    {
                        maxBudget = int.MaxValue;
                    }
                    break;
                case 2:
                    if(prefCarType == null)
                    {
                        prefCarType = new HashSet<string>();
                    }
                    prefCarType.Add(btn.Text);
                    break;
                case 3:

                    break;
                case 4:

                    break;
                case 5:

                    break;
                case 6:

                    break;
                case 7:

                    break;
                case 8:

                    break;
                case 9:

                    break;
                case 10:

                    break;
                case 11:

                    break;
                case 12:

                    break;
            }
        }

        

        protected void PriceRangeAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void PriceRangeImportanceButtons(object sender, EventArgs e)
        {

        }



        protected void CarTypeAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void CarTypeImportanceButtons(object sender, EventArgs e)
        {

        }



        protected void PreferredCarMakesAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void PreferredCarMakesImportanceButtons(object sender, EventArgs e)
        {

        }



        protected void DislikedCarMakesAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void DislikedCarMakesImportanceButtons(object sender, EventArgs e)
        {

        }



        protected void CarSizeAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void CarSizeImportanceButtons(object sender, EventArgs e)
        {

        }



        protected void ElectricCarAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void ElectricCarImportanceButtons(object sender, EventArgs e)
        {

        }



        protected void RegularlyTransportedPeopleAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void RegularlyTransportedPeopleImportanceButtons(object sender, EventArgs e)
        {

        }



        protected void PreferredFuelTypeAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void PreferredFuelTypeImportanceButtons(object sender, EventArgs e)
        {

        }



        protected void FuelConsumptionAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void FuelConsumptionImportanceButtons(object sender, EventArgs e)
        {

        }



        protected void RaceTrackUsageAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void RaceTrackUsageImportanceButtons(object sender, EventArgs e)
        {

        }



        protected void DrivestyleAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void DrivestyleImportanceButtons(object sender, EventArgs e)
        {

        }



        protected void AccelerationAnswerButtons(object sender, EventArgs e)
        {

        }

        protected void AccelerationImportanceButtons(object sender, EventArgs e)
        {

        }

































    }
}