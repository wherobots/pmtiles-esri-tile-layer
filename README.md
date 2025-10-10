# Visualizing PMTiles with ESRI ArcGIS Maps SDK

This project demonstrates how to render PMTiles vector data using ESRI's ArcGIS Maps SDK for JavaScript with a local tile server.

## Requirements

- **ArcGIS API Key**: Create one at [ArcGIS Developer](https://developers.arcgis.com/documentation/security-and-authentication/api-key-authentication/tutorials/create-an-api-key/)
  - This key is required to render the basemap in the application.
  - Add `https://localhost` to your allowed referrers list
  - Insert the API key into the `esriConfig.apiKey` variable in `index.html`
- **Docker**: Install from [Docker Desktop for Mac](https://docs.docker.com/desktop/setup/install/mac-install/)
- **HTML Preview Tool**:
    - The reason you need this is ArcGIS Maps SDK requires a web server to authenticate and load the basemap properly.
    - JetBrains IDEs: [HTML Tools plugin](https://plugins.jetbrains.com/plugin/13118-html-tools)
  - VS Code: [Live Preview extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.live-server)

## Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/wherobots/pmtiles-esri-tile-layer.git
   cd pmtiles-esri-tile-layer
   ```

2. **Add your PMTiles data**:
   - Download your PMTiles file from Wherobots managed storage 
   - Place it in the `src/pmtiles/` directory
   - Verify the filename matches the configuration in `src/config.json` (default: `railroads.pmtiles`)

3. **Configure API key**:
   - Open `src/index.html`
   - Update the `esriConfig.apiKey` variable with your ArcGIS API key

4. **Start the tile server**:
   ```bash
   make docker-setup
   ```

5. **Launch the application**:
   - Open `src/index.html` in your IDE
   - Use your HTML preview tool to view the map

## Cleanup

When finished:

1. **Stop the tile server**: Press `Ctrl+C` in the terminal running the Docker container
2. **Remove PMTiles file**: Delete it from `src/pmtiles/` if no longer needed

The Docker container will automatically be removed when stopped.

