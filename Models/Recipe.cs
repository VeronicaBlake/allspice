namespace allspice.Models
{
    public class Recipe
    {
        public string Description { get; set; }
        public string Title { get; set; }
        public int cookTime { get; set; }
        public int prepTime { get; set; }
        public string CreatorId {get; set;}
        public Profile Creator {get; set;}
    }
}