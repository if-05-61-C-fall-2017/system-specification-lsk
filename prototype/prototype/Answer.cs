using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prototype
{
    public class Answer
    {
        private string _answerString;
        private int _importancy;

        public Answer(string answer, int importancy)
        {
            _answerString = answer;
            _importancy = importancy;
        }

        public string AnswerString
        {
            get
            {
                return _answerString;
            }

            set
            {
                _answerString = value;
            }
        }

        public int Importancy
        {
            get
            {
                return _importancy;
            }

            set
            {
                _importancy = value;
            }
        }
    }
}