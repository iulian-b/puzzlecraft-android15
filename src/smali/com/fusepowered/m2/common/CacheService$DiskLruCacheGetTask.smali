.class Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;
.super Landroid/os/AsyncTask;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/common/CacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiskLruCacheGetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final mDiskLruCacheGetListener:Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;

.field private final mKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "diskLruCacheGetListener"    # Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->mDiskLruCacheGetListener:Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;

    .line 187
    iput-object p1, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->mKey:Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/m2/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->mDiskLruCacheGetListener:Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->mDiskLruCacheGetListener:Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;

    iget-object v1, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;->onComplete(Ljava/lang/String;[B)V

    .line 212
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->onCancelled()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->mDiskLruCacheGetListener:Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->mDiskLruCacheGetListener:Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;

    iget-object v1, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetTask;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/fusepowered/m2/common/CacheService$DiskLruCacheGetListener;->onComplete(Ljava/lang/String;[B)V

    goto :goto_0
.end method
