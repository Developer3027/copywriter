require "application_system_test_case"

class HomeTest < ApplicationSystemTestCase
  # Test home page for specific visuals
  # 11 assertions run for this test on root
  test "visiting home" do
    visit root_url

    # Ensure there are two links for LKM Creative on page
    assert_selector "a", exact_text: "LKM Creative", count: 2
    # Ensure the phrase "Writing WORDS that SELL!"
    assert_selector "span", exact_text: "Writing WORDS that SELL!"
    # Ensure the phrase "We write copy that sells like toilet paper in a pandemic. Could you be our next success story?"
    assert_selector "p", exact_text: "We write copy that sells like toilet paper in a pandemic. Could you be our next success story?"
    # Verify owner name
    assert_selector "h2", text: "Lauren Gouws"
    # Verify producer name
    assert_selector "h2", text: "Shawn Gouws"
    # Ensure there are links to about page
    assert_selector :link, href: "/pages/about"
    # Ensure there are links to team section on about page
    assert_selector :link, href: "/pages/about#team"
    # Ensure there is a link to owner Fiverr
    assert_selector :link, href: "https://www.fiverr.com/lkmcreative"
    # Ensure there is youtube video
    assert_selector "iframe[src*='https://www.youtube.com/embed/RBtq_s91KAE?si=qHs3HFoKXE8eaaWW']"
    # Ensure services still listed
    assert_selector "p", text: "website copy to brochure copy, blogs, articles, crowdfunding campaign copy, billboards, video scripts, TV ads, radio spots, explainer videos, mailers,"
    # Verify Shawn email on page
    assert_selector "p", text: "shaun@lkmcreative.com"
  end
end
