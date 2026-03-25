from playwright.sync_api import sync_playwright

def test_add_to_cart():
    with sync_playwright() as p:
        browser = p.chromium.launch()
        page = browser.new_page()

        page.goto("https://example.com")
        page.click("text=Product")
        page.click("text=Add to cart")

        assert page.locator("text=Cart").is_visible()

        browser.close()
