#include <CUnit/CUnit.h>
#include <CUnit/Basic.h>

//Program Header Files
#include "Example.h"

// Every cunit test has this signature
void exampleFunc(void)
{

}


int main(void)
{
    CU_TestInfo ExampleTests[] = {
	        { "exampleTestName([])", exampleFunc },
           CU_TEST_INFO_NULL
    };

    CU_SuiteInfo ExampleSuites[] = {
	        { "Example Tests", NULL, NULL, NULL, NULL, ExampleTests },
           CU_SUITE_INFO_NULL
    };

    CU_initialize_registry();

    // Add all suites listed to registry
    CU_register_suites(ExampleSuites);

    CU_basic_run_tests();

    CU_cleanup_registry();
}
