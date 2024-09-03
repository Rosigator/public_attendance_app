import { testApiHandler } from "next-test-api-route-handler"; // Must always be first
import * as refreshHandler from "@/app/api/auth/refresh/route";

it("GET returns 200", async () => {
    await testApiHandler({
        appHandler: refreshHandler,
        test: async ({ fetch }) => {
            const response = await fetch({ method: "GET" });
            const json = await response.json();
            expect(response.status).toBe(200);
            await expect(json).toStrictEqual({
                ok: 'ok',
            });
        },
    });
});