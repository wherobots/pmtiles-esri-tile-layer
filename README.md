# Visualizing PMTiles with Esri Maps SDK

This project demonstrates how to render PMTiles vector data using Esri's Maps SDK for JavaScript with a local tile server.

## Before you get started

This repo is a part of a hands-on project that shows you how to generate and visualize PMTiles. It consists of three parts:

1. [**Blog Post:**](https://wherobots.com/pmtiles-rendered-in-esri-maps-api/)  A quick post that introduces and showcases this capability.
2. [**Jupyter Notebook:**](https://cloud.wherobots.com/notebooks/jw6r066ank5aoc/generate-pmtiles-for-railroad-dataset) The practical, step-by-step code for generating the PMTiles file.
3. **This Repo:** Contains a tile server and the client-side code using the **Esri JavaScript SDK** to render your PMTiles on a basemap.

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

