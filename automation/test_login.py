from playwright.sync_api import sync_playwright

def test_login():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        page = browser.new_page()

        page.goto("https://example.com/login")
        page.fill("input[name=email]", "test@test.com")
        page.fill("input[name=password]", "123456")
        page.click("button[type=submit]")

        assert page.url == "https://example.com/dashboard"

        browser.close()
