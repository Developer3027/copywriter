<!--concept on home page -->
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

<!-- pulled from top of about page -->
<section class="mt-24 w-full">
  <div class="max-w-[85rem] w-full h-full mx-auto my-auto p-4">
    <!-- 2 col section on desktop-->
    <div class="flex-col md:flex md:flex-row w-full justify-center md:justify-around">
      <!--lkm logo info block-->
      <div class="flex justify-center items-center w-full md:w-1/2">
        <div class="hidden lg:flex items-center min-w-fit">
            <%= image_tag("bff425.png", style: "width: 300px; height: 220px;", alt: "l k m creative logo") %>
        </div>
        <div class="lg:ms-3">
          <h1 class="text-4xl pb-4 sm:px-2 text-orange-600">
            LKM Creative
          </h1>
          <span class="text-2xl ps-1 sm:px-2">
            Writing WORDS that SELL!
          </span>
          <div class="bg-green-200 p-2">
            <p class="py-2 mb-2">
              We write copy that sells like toilet paper in a pandemic. Could you be our next success story?
            </p>
            <%= link_to "LKM Creative", "https://www.lkmcreative.com", target: "_blank", rel: "alternate", class: "p-2 font-bold bg-[#faff00] rounded-e-full" %>
            <p class="py-2 mt-2">
              Changing the way companies grow forever. Gone are the days of working with old-school agencies with outdated mindsets and slow processes.
            </p>
          </div>
        </div>
      </div>
      <!-- Copywrite desc intro block -->
      <div class="flex flex-col w-full md:w-1/2 justify-center items-center">
        <div class="my-12 px-4 sm:my-8 md:my-4 lg:my-0 lg:px-10">
          <p class="text-center font-medium lg:text-xl xl:text-2xl">
            What copywriting services team...can say they served 9,000+ clients?
          </p>
          <div class="flex justify-center items-center my-2">
            <span class="text-center lg:text-xl xl:text-2xl py-2 px-6 font-bold bg-[#faff00] rounded-e-full border">
              We can!
            </span>
          </div>
          <p class="text-center lg:text-xl xl:text-2xl">
            <span class="text-orange-600 font-medium">LKM Creative</span> is changing the way companies grow forever. Gone are the days of working with old-school agencies with outdated mindsets and slow processes.
          </p>
        </div>
      </div>
    </div>
  </div>
</section>

<!--First attempt workflow db setup yml-->
  db_prepare:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        database_name: [copywriter_test]
        database_host: [localhost]
        database_port: [5432]
        database_user: [postgres]
        database_password: [postgres]

    services:
      postgres:
        image: postgres:latest
        env:
          POSTGRES_USER: ${{ matrix.database_user }}
          POSTGRES_PASSWORD: ${{ matrix.database_password }}
        ports:
          - 5432:5432
        options: --health-cmd pg_isready --health-interval 10s --health-timeout 5s --health-retries 5

    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Set up Ruby
        uses: ruby/setup-ruby@v1

      - name: Build test database
        env:
          RAILS_ENV: test
          DATABASE_NAME_TEST: ${{ matrix.database_name }}
          DATABASE_HOST_TEST: ${{ matrix.database_host }}
          DATABASE_PORT_TEST: ${{ matrix.database_port }}
          DATABASE_USER_TEST: ${{ matrix.database_user }}
          DATABASE_PASSWORD_TEST: ${{ matrix.database_password }} 
        run: |
          bin/rails db:create
          bin/rails db:migrate
          bin/rails db:seed