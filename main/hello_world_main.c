/* Hello World Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_spi_flash.h"


void app_main(void)
{
    printf("Initializing System Up-Time Tracker...\n");
    int counter=0;
    while(1){
        printf("ESP8266 active Up-Time: %d seconds \n", counter++);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}
