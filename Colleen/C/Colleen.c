#include <stdio.h>

const char *source =
"#include <stdio.h>\n"
"\n"
"const char *source =\n"
"%s\n"
";\n"
"\n"
"int main()\n"
"{\n"
"    printf(source, source);\n"
"    return 0;\n"
"}\n";

int main()
{
    printf(source, source);
    return 0;
}

