namespace WorkshopManager.Models.Game {
    public class Game : Object {
        public string name { get; set; }
        public string path { get; set; }
        public string executable { get; set; }
        public string icon_path { get; set; }
        public string workshop_path { get; set; }
        public string workshop_url { get; set; }
        public bool is_installed { get; set; }
    }
}