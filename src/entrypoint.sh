#!/bin/sh

reset_database() {
    {
        orator migrate:rollback --config=config.py -f
        orator migrate --config=config.py -f
        orator db:seed --config=config.py -f
    } || {
        reset_database
    }    
}

#reset_database
uvicorn main:app --reload --host 0.0.0.0 --port 8000