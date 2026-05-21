from fastapi import FastAPI


app = FastAPI()


@app.get("/", tags=["home"])
async def home() -> dict:
    return {"message": "Hello world v2", "status": True}
