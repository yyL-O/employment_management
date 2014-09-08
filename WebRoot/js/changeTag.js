function selectTag(showContent,selfObj){  
 // 操作标签  
 	var tag = document.getElementById("Tag").getElementsByTagName("li");  
 	var taglength = tag.length;  
 	for(i=0; i<taglength; i++){  
 		tag[i].className = "";
    	tag[i].style.background=""; 
 	}  
 	selfObj.parentNode.className = "currentTag";  
 	selfObj.parentNode.style.background="#fff";
 	// 操作内容  
 	for(i=0; j=document.getElementById("tagContent"+i); i++){  
 		j.style.display = "none";  
 	}  
 	document.getElementById(showContent).style.display = "block";    
}  