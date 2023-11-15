#DP #dsa 

>[!tip] Problem
>Write a function allConstruct(string, vector\<string>) that takes in a target string and a vector of strings.
>
>Return all the combinations (vector\<string>) that generate the target string using the vector of strings acting as a wordbank.
>
>Assume that the elements can be used infinite number of times.

example:
	`allConstruct("purple", {"purp", "p", "ur", "le", "purpl"}) -> {"purp", "le"}, {"p", "ur", "p", "le"}`
	`allConstruct("hello", {"cat", "dog", "mouse"}) -> {}`
	`allConstruct("", {"cat", "dog", "mouse"}) -> {{}}`


![[Pasted image 20231114183248.png]]

