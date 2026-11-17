.class public Lcom/fusepowered/nx/monetization/database/CacheDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CacheDatabase.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "nativex_cache.db"

.field private static final DATABASE_VERSION:I = 0x4


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v0, "nativex_cache.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 29
    const-string v0, "Create table if not exists cache_files(cache_id INTEGER PRIMARY KEY AUTOINCREMENT,OfferId INTEGER NOT NULL,ExpirationDateUTC INTEGER NOT NULL,RelativeUrl TEXT NOT NULL,MD5 TEXT NOT NULL,CDN TEXT NOT NULL,Ext TEXT NOT NULL,FileSize INTEGER NOT NULL,FileStatus INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    const-string v0, "Create table if not exists cache_utils(cache_utils_id INTEGER PRIMARY KEY AUTOINCREMENT,cache_util_value_int INTEGER,cache_util TEXT NOT NULL UNIQUE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string v0, "Create table if not exists download_map(download_id INTEGER PRIMARY KEY AUTOINCREMENT,cachefile TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 55
    const-string v0, "DROP TABLE IF EXISTS file_status"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v0, "DROP TABLE IF EXISTS cache_files"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "DROP TABLE IF EXISTS cache_utils"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "DROP TABLE IF EXISTS download_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "DROP TABLE IF EXISTS downloaded_files"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v0, "DROP TABLE IF EXISTS cache_error"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/database/CacheDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    return-void
.end method
