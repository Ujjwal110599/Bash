Script to find count of lowest price

Input:
itemID,itemName,ItemPrice
1,pen,20
2,pencil,14
3,copy,15
4,sketch,14
5,register,14

Solution:

filename=$1
awk - F',' v min=999 'NR>1 {e[$1]=$3}END{for(x in e)if(e[x] < min)min=e[x]; for(x in e)if(e[x]==min)c++;print c }' $filename
