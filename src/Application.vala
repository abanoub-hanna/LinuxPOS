
const string appId = "com.github.abanoub-hanna.LinuxPOS";

public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: appId,
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var button_hello = new Gtk.Button.with_label ("Click Me!"){
          margin = 12
        };
        
        button_hello.clicked.connect (() => {
          button_hello.label = "Hello, World!";
          button_hello.sensitive = false;
        });
        
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello World"
        };
        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
