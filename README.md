<p align="right">
  <a href="README.md">US</a> - <a href="README.pt.md">BR</a>
</p>

# Flutter Real Estate Funds

This is a simple Flutter application that fetches and displays real-time data of Brazilian real estate funds. The application utilizes the mfinance.com.br API to fetch updated information about real estate funds and displays them in a list.

## How to Use

1. Clone this repository.
2. Open the project in your preferred code editor.
3. Make sure you have the Flutter SDK installed and configured correctly in your development environment.
4. Run the application on an emulator or physical device.

## Code Structure

The code is organized as follows:

- **main.dart**: This is the entry point of the Flutter application. It defines the `MyApp` class, which is a StatelessWidget that sets up the MaterialApp and sets FiisListPage as the initial page.
  
- **fiis_list_page.dart**: This file contains the definition of the `FiisListPage` class, which is a StatefulWidget responsible for fetching and displaying real-time data of real estate funds.

- **fetch_fiis.dart**: This file contains the `fetchFiis` function, which is responsible for making the HTTP request to the mfinance.com.br API and returning the real estate funds data in JSON format.

## Features

- Display of real-time data of Brazilian real estate funds.
- Simple and intuitive interface.
- Automatic data updates.

Feel free to contribute enhancements, bug fixes, or new features to this application!

