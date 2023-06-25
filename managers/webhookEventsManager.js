const {
    WEBHOOK_EVENT_TYPES,
} = require('../constants/messengerPlatformConstants');

const parseEvent = (event) => {
    if (event.message) return parseMessageEvent(event);
    if (event.postback) return parsePostbackEvent(event);
    if (event.referral) return parseReferralEvent(event);

    // ToDo: Part 3_4
};

const extractCommonAttributes = (event) => {
    // ToDo: Part 3_4
};
const parseMessageEvent = (event) => {
    // ToDo: Part 3_1
    // ToDo: Part_6
};

const parsePostbackEvent = (event) => {
    // ToDo: Part 3_2
};

const parseReferralEvent = (event) => {
    // ToDo: Part 3_3
};

const extractEntitiesFromMessageObject = (message) => {
    // ToDo: Part_6
};

const extractTraitsFromMessageObject = (message) => {
    // ToDo: Part_6
};

module.exports = {
    parseEvent,
};
