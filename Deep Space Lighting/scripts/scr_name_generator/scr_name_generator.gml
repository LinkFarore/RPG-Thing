/// @description ===RANDOM NAME GENERATOR===///
function scr_name_generator() {
	//Initialize Lists
	vowelList = ds_list_create();
	consonantList = ds_list_create();
	//Vowel List
	ds_list_add(vowelList,"a"); ds_list_add(vowelList,"e"); ds_list_add(vowelList,"i");
	ds_list_add(vowelList,"o"); ds_list_add(vowelList,"u");
	//Consonant List
	ds_list_add(consonantList,"b"); ds_list_add(consonantList,"c"); ds_list_add(consonantList,"d");
	ds_list_add(consonantList,"f"); ds_list_add(consonantList,"g"); ds_list_add(consonantList,"h");
	ds_list_add(consonantList,"j"); ds_list_add(consonantList,"k"); ds_list_add(consonantList,"l");
	ds_list_add(consonantList,"m"); ds_list_add(consonantList,"n"); ds_list_add(consonantList,"p");
	ds_list_add(consonantList,"q"); ds_list_add(consonantList,"r"); ds_list_add(consonantList,"s");
	ds_list_add(consonantList,"t"); ds_list_add(consonantList,"v"); ds_list_add(consonantList,"w");
	ds_list_add(consonantList,"x"); ds_list_add(consonantList,"y"); ds_list_add(consonantList,"z");
	//Variables
	nameLength = choose(3,4,5,6,7,8);
	numberLength = choose(0,1,2,3,4,5);
	finalWord = "";
	finalNumber = "";
	//Generate Letter Variables
	vowelListSize = ds_list_size(vowelList);
	consonantListSize = ds_list_size(consonantList);
	for (v=0; v<consonantListSize; v++) {
	    vowel[v] = ds_list_find_value(vowelList,floor(random(vowelListSize)));
	}
	for (c=0; c<consonantListSize; c++) {
	    consonant[c] = ds_list_find_value(consonantList,floor(random(consonantListSize)));
	}
	//Arrange Letter
	maxVowels = 2; vowelReset = 2;
	maxConsonants = 2; consonantReset = 2;
	vowelChance = random(100);
	for (l=0; l<nameLength; l++) {
	    if (vowelChance < 50) {
	        letter[l] = vowel[l];
	        maxVowels -= 1;
	        maxConsonants = consonantReset;
	        if (maxVowels = 0) {
	            vowelChance = 100;
	        } else {
	            vowelChance = random(100);
	        }
	    } else {
	        letter[l] = consonant[l];
	        maxConsonants -= 1;
	        maxVowels = vowelReset;
	        if (maxConsonants = 0) {
	            vowelChance = 0;
	        } else {
	            vowelChance = random(100);
	        }
	    }
	}
	//Create Final Word
	switch(nameLength) {
	    case (3):
	        finalWord = string_upper(letter[0])+string(letter[1])+string(letter[2]); break;
	    case (4):
	        finalWord = string_upper(letter[0])+string(letter[1])+string(letter[2])
	        +string(letter[3]); break;
	    case (5):
	        finalWord = string_upper(letter[0])+string(letter[1])+string(letter[2])
	        +string(letter[3])+string(letter[4]); break;
	    case (6):
	        finalWord = string_upper(letter[0])+string(letter[1])+string(letter[2])
	        +string(letter[3])+string(letter[4])+string(letter[5]); break;
	    case (7):
	        finalWord = string_upper(letter[0])+string(letter[1])+string(letter[2])
	        +string(letter[3])+string(letter[4])+string(letter[5])+string(letter[6]); break;
	    case (8):
	        finalWord = string_upper(letter[0])+string(letter[1])+string(letter[2])
	        +string(letter[3])+string(letter[4])+string(letter[5])+string(letter[6])
	        +string(letter[7]); break;
	}
	//Combine Final Name
	name = finalWord;
	//Destroy Lists
	ds_list_destroy(vowelList);
	ds_list_destroy(consonantList);

}