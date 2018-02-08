using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prototype
{
    public class Answer
    {
        private string _answerString;
        private int _importance;

        public Answer(string answer, int importance)
        {
            _answerString = answer;
            _importance = importance;
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

        public int Importance
        {
            get
            {
                return _importance;
            }

            set
            {
                _importance = value;
            }
        }
    }
}