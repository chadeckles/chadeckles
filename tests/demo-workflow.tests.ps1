# Simple demo test
Describe "HelloWorld Test Validation" {
    It "Checking to see if output contains 'Hello, World!'" {
        echo "Hello, World!" | Should -Be "Hello, World!"
    }
}
