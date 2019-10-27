//
//  main.c
//  logtime
//
//  Created by Shamim Dehghani on 9/19/18.
//  Copyright © 2018 Sean Dehghani. All rights reserved.
//

#include <stdio.h>
#include <math.h>


int main()
{
    int minutes=0, hours=0; // declaring varibles and types
    int count = 0, time = 0, average_time = 0, longest_time = 0, sum =0;
    int sum_minutes=0, sum_hours=0, lgt_minutes=0, lgt_hours=0, avg_minutes=0, avg_hours=0;
    while(1){// an infinite loop till it hits the break point !
        int scan = scanf( " %d:%d", &hours, &minutes); // input the file
        if (scan == EOF){
            break;
        }
        if (scan <= 0){
            printf("Error! Incorrect Format");
            return 1;
        }
        time = (hours*60 + minutes);//converting the time to minutes only !
        sum += time ;//adding the time logs!
        //printf("%d,%d\n" , sum , time);
        count += 1; // count += 1 ; counting the number of times we counting !
        if (longest_time < time){
            longest_time = time;
         //   printf("%d,%d\n" , longest_time, time);
        }
        
        /*else if (longest_time >= time){
              longest_time=longest_time;
        }*/
    }
    if(count == 0){
        printf("Error! The file is Empty!");
        return 1;
    }
    average_time = sum / count; // total average time in minutes
    //converting back time to HH:MM format
   
    sum_minutes = sum % 60 ;
    sum_hours = sum / 60;
    
    lgt_minutes = longest_time % 60 ;
    lgt_hours = longest_time / 60;
    
    avg_minutes = average_time % 60;
    avg_hours = average_time / 60;
    
    // Output
    printf("Total_time: %d:%02d \nLongest_time: %d:%02d \nAverage_time: %d:%02d", sum_hours, sum_minutes, lgt_hours, lgt_minutes, avg_hours, avg_minutes);
    return 0;
}
