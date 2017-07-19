import commander { Command }

shared void runCommander() {
    dynamic {

        dynamic program = Command();

        program.version("0.1.0");
        program.option("-p, --peppers", "Add peppers");
        program.option("-P, --pineapple", "Add pineapple");
        program.option("-b, --bbq-sauce", "Add bbq sauce");
        program.option("-c, --cheese [type]", "Add the specified type of cheese [marble]", "marble");

        program.parse(_process.argv);

        print("you ordered a pizza with:");

        if (program.peppers) {
            print("  - peppers");
        }
        if (program.pineapple) {
            print("  - pineapple");
        }
        if (program.bbqSauce) {
            print("  - bbq");
        }
        print("  - ``program.cheese`` cheese");
    }
}