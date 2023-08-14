import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private TextView resultTextView;
    private String currentNumber = "";
    private String operator = "";
    private double num1 = 0;
    private double num2 = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        resultTextView = findViewById(R.id.resultTextView);

        // Set click listeners for digit buttons
        for (int i = 0; i <= 9; i++) {
            int buttonId = getResources().getIdentifier("button" + i, "id", getPackageName());
            Button button = findViewById(buttonId);
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    onDigitButtonClick(i);
                }
            });
        }

        // Set click listener for equals button
        Button equalsButton = findViewById(R.id.buttonEquals);
        equalsButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                calculateResult();
            }
        });

        // Set click listeners for operator buttons
        // Add listeners for other operator buttons here
    }

    private void onDigitButtonClick(int digit) {
        currentNumber += digit;
        updateResultText();
    }

    private void updateResultText() {
        resultTextView.setText(currentNumber);
    }

    private void calculateResult() {
        if (!currentNumber.isEmpty()) {
            num2 = Double.parseDouble(currentNumber);
            double result = performCalculation(num1, num2, operator);
            currentNumber = String.valueOf(result);
            updateResultText();
            num1 = result;
            num2 = 0;
            operator = "";
        }
    }

    private double performCalculation(double num1, double num2, String operator) {
        // Implement your calculation logic here based on the operator
        // For example: +, -, *, /
        switch (operator) {
            case "+":
                return num1 + num2;
            case "-":
                return num1 - num2;
            case "*":
                return num1 * num2;
            case "/":
                if (num2 != 0) {
                    return num1 / num2;
                } else {
                    return Double.NaN; // Handle division by zero
                }
            default:
                return num2;
        }
    }

    // Add methods to handle operator button clicks here
    // For example: onAddButtonClick(), onSubtractButtonClick(), etc.
}
