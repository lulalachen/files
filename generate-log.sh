log_message(){
	Current_Date = `date + '%b %d %H:%M%S'`
	Host = `hostname`
	
	echo "$Current_Date $Host $0[$$]: $1" >> $2 
}

for(( i = 1; i < $1 ; i++ ))
do 
	log_message "INFO: Login successful for User Alice" $2
	log_message "INFO: Login successful for User Bob" $2
	log_message "WARNING: Login failed for User Mallory" $2
	log_message "INFO: Logout occured" $2
	log_message "SERVER: Disk write falure" $2
done

