# Simple-LaTeX-Evaluation
## Problem description
LaTeX is a powerful tool when dealing with complex mathematic equations in the document.  
It used some simple syntax to represent the relation between numerator and denominator(分子 分母), base and exponent.  
In this problem, you’re asked to parse and evaluate an equation written in the above 2 cases of LaTeX syntax. 

In summary, your parser should be able to deal with the following syntax:

`` ‘+’, ’-‘ only plus, minus (not include ‘*’ , ‘/’)  ``  
`\frac{ .... Numerator..... }{.....Denominator......} `  
This syntax used in LaTeX to build a fraction(分數) in document. 
When dealing with this case, say it’s \frac{3}{4}, you should evaluate them as 3 divide by 4 (3/4).
And of course the Numerator and Denominator can also be replaced by a valid expression.

`a^b, a^{expression} `  
Since LaTeX support exponent operator, you can
used ^ as the exponent operator directly. But notice that, to avoid
ambiguity, LaTeX didn’t allow ‘b’ (exponent part) to be expressions
other than a number unless the expression is enclosed with ‘{’ ‘}’ pair.  

Print your answer rounded to 3 digit after decimal point(“%.3lf”).  
NOTE: #include<math.h> and use pow(a,b) when deal with floating
point power.

| Input | Output |
|:------------:|:-------------:|
| 3^2 - 2^3 | 1.000 |
| 3^{1 + 1 + 2 - 1} - 2^{ 3 } | 19.000 |
| \frac{1}{2}^3 | 0.125 |
| 3^{\frac{1}{2}} | 1.732 |
