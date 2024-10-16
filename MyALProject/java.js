function initTextBox() {
    var textBox = document.getElementById('customTextBox');
    if (textBox) {
        textBox.value = "Initialized TextArea"; // Set some default value for testing
        console.log("TextBox initialized successfully");
    } else {
        console.error("TextBox element not found");
    }
}