const request = require('supertest');
const app = require('../app');

describe('2- Messaging event webhook (POST)', () => {
    it('should respond with 200 when the sending object is page', async (done) => {
        const res = await request(app)
            .post('/webhook')
            .send({
                object: 'page',
                entry: [
                    {
                        id: '<PAGE_ID>',
                        time: 1458692752478,
                        messaging: [
                            {
                                sender: {
                                    id: '<PSID>',
                                },
                                recipient: {
                                    id: '<PAGE_ID>',
                                },
                                timestamp: 1458692752478,
                                message: {
                                    mid: 'mid.1457764197618:41d102a3e1ae206a38',
                                    text: 'hello, world!',
                                },
                            },
                        ],
                    },
                ],
            });
        expect(res.status).toBe(200);
        expect(res.text).toBe('EVENT_RECEIVED');
        done();
    });

    it('should respond with 404 when the sending object is not page', async (done) => {
        const res = await request(app).post('/webhook').send({});
        expect(res.status).toBe(404);
        done();
    });
});
