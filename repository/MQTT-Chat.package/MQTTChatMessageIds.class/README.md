I keep message ids that a speficif client keeps. I am send to the channel, using MQTTChatRequest in order to obtain missing messages. 

If another client finds out that it misses a message(s), it can send request to the channel, using MQTTChatMessagesRequest with requested message ids.

TODO
Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	ids:		<Object>


    Implementation Points