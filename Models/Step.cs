using System;
using System.Collections.Generic;

namespace allspice.Models
{
    public class Step
    {
        public int RecipeId { get; set; }
        public string Body { get; set; }
        public int CreatorId{ get; set; }
    }
}