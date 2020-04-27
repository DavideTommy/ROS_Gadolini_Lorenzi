//
// Created by lorenzo on 26/04/20.
//

#include "distance_service.h"



void distanceCalculator(encoded *car, encoded *obs) {
    float distance;

    if (car != NULL && obs != NULL) {


        distance = sqrt(pow((car->North - obs->North),2) + pow((car->East - obs->East),2) + pow((car->Up - obs->Up),2));

        if (distance >= 5) printf("Safe");
        else if (1 <= distance && distance < 5) printf("Unsafe");
        else if (distance < 1) printf("Crash");
        else printf("Error: distance not correct");
    }


    return;

}
