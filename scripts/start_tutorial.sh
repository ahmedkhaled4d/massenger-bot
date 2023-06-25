#!/usr/bin/env bash



cmd=$1

if [ -z "$cmd" ]; then
    echo "
Please choose the Part you want to run (e.g: Part_3_2)
    "
else        
    if [ "$cmd" = "Part_1" ]; then    
        docker-compose run test node_modules/jest/bin/jest.js tests/1-webhookVerification.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_2" ]; then    
        docker-compose run test node_modules/jest/bin/jest.js tests/2-messagingEventsWebhook.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_3" ]; then    
        docker-compose run test node_modules/jest/bin/jest.js tests/3-parsingMessagingEvents.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_3_1" ]; then    
        docker-compose run test node_modules/jest/bin/jest.js tests/3-1-parsingMessageEvent.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_3_2" ]; then            
        docker-compose run test node_modules/jest/bin/jest.js tests/3-2-parsingPostbackEvent.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_3_3" ]; then    
        docker-compose run test node_modules/jest/bin/jest.js tests/3-3-parsingReferralEvent.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_3_4" ]; then 
        docker-compose run test node_modules/jest/bin/jest.js tests/3-4-webhookEventsAppendix.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_4_1" ]; then 
        docker-compose run test node_modules/jest/bin/jest.js tests/4-1-sendingSenderActions.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_4_2" ]; then 
        docker-compose run test node_modules/jest/bin/jest.js tests/4-2-sendingTextMessages.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_4_3" ]; then 
        docker-compose run test node_modules/jest/bin/jest.js tests/4-3-sendingQuickReplies.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_4_4" ]; then 
        docker-compose run test node_modules/jest/bin/jest.js tests/4-4-sendingAttachments.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_4_5" ]; then 
        docker-compose run test node_modules/jest/bin/jest.js tests/4-5-sendingButtonTemplate.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_4_6" ]; then 
        docker-compose run test node_modules/jest/bin/jest.js tests/4-6-sendingGenericTemplate.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_4_7" ]; then 
        docker-compose run test node_modules/jest/bin/jest.js tests/4-7-sendingMediaTemplate.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_5" ]; then 
        docker-compose run test node_modules/jest/bin/jest.js tests/5-superEchoChatbot.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "Part_6" ]; then 
        docker-compose run test node_modules/jest/bin/jest.js tests/6-builtInNLP.test.js --detectOpenHandles --forceExit
    elif [ "$cmd" = "all_Parts" ]; then 
        docker-compose run test node_modules/jest/bin/jest.js --detectOpenHandles --forceExit
    else
      echo "
I can't find this Part, please try the Part codes placed in the tuorial!
    "
    fi
    
fi