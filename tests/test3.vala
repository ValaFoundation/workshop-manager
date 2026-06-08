namespace AppTests {
    using GLib;

    public class UkazkaTest2 : BaseTest {

        construct {
            add_test ("matematika", test_matematika);
            add_test ("text", test_text);
            add_test ("test_downloader", test_downloader);
        }

        public void test_matematika () {
            assert (2 + 2 == 4);
        }

        public void test_text () {
            assert ("vala".length == 4);
        }

        public void test_downloader () {
            var d = new App.Utils.Downloader ();
            assert (d is App.Utils.Downloader);
        }
    }
}