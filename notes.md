<section id="" class="w-full">
  <div class="max-w-[85rem] w-full h-full mx-auto my-auto p-4">
    <div class="flex-col md:flex md:flex-row w-full justify-center md:justify-around">
      <!-- Founder image / intro -->
      <div class="flex-col justify-center items-center w-full md:w-1/2">
        <div class="w-80 mx-auto">
          <h2 class="text-3xl font-semibold w-full text-end py-4">
            Lauren Gouws
          </h2>
        </div>
        <div class="flex w-80 mx-auto">
          <div class="w-full">
            <%= image_tag("frame9.png", style: "width: 185px; height: 185px;", alt: "founder image") %>
          </div>
          <p class="w-48 ms-2">
            10 years. 13,000 clients. Lauren is a passionate wordsmith and Entrepreneur cover girl.
          </p>
        </div>
        <div class="flex justify-end -mt-8 w-80 mx-auto">
            <%= image_tag("star-press.svg", style: "width: 311px; height: 212px;", alt: "Stop the Press") %>
          </div>
      </div>
      <div class="flex flex-col justify-evenly items-start w-full md:w-1/2">
        <!-- link block for info / service-->
        <div class="ms-8 py-2">
          <div class="flex w-full">
            <%= link_to pages_about_path do %>
              <div class="flex flex-col border border-sky-400 rounded-s-lg rounded-e-lg px-6">
                <h3 class="text-xl font-medium">Learn More -</h3>
                <span class="ms-16 text-sky-700">Xtra, Xtra. Read all about it.</span>
              </div>
            <% end %>
            <div class="flex items-center ms-2 sm:ms-24">
              <%= image_tag("bluediamond.svg", style: "width: 30px; height: 30px;", alt: "blue diamond illustration") %>
            </div>
          </div>
        </div>
        <div class="ms-8 sm:ms-16 py-2">
          <div class="flex w-full">
            <%= link_to pages_about_path do %>
              <div class="flex flex-col border border-sky-400 rounded-s-lg rounded-e-lg px-6">
                <h3 class="text-xl font-medium">The Team -</h3>
                <span class="ms-16 sm:ms-24 text-sky-700">See who are you working with?</span>
              </div>
            <% end %>
            <div class="flex items-center ms-2 sm:ms-24">
              <%= image_tag("redcircle.svg", style: "width: 30px; height: 30px;", alt: "red circle illustration") %>
            </div>
          </div>
        </div>
        <div class="ms-8 sm:ms-24 py-2">
          <div class="flex w-full">
            <%= link_to "https://www.fiverr.com/lkmcreative", target: "_blank", rel: "alternate" do %>
              <div class="flex flex-col border border-sky-400 rounded-s-lg rounded-e-lg px-6">
                <h3 class="text-xl font-medium">Order on Fiverr -</h3>
                <span class="ms-16 sm:ms-32 text-sky-700">Professional, secure and perfect.</span>
              </div>
            <% end %>
            <div class="flex items-center ms-2 sm:ms-24">
              <%= image_tag("purpledodad.svg", style: "width: 30px; height: 30px;", alt: "purple polygon illustration") %>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </div>
</section>