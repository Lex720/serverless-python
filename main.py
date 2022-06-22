from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def index_root():
    return {"message": "Hello World V1"}


@app.post("/scrape")
async def trigger_scraping():
    return {"scraping": "Oh Yes!"}
