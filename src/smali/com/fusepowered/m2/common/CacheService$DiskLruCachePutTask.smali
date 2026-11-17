.class Lcom/fusepowered/m2/common/CacheService$DiskLruCachePutTask;
.super Landroid/os/AsyncTask;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/common/CacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiskLruCachePutTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContent:[B

.field private final mKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCachePutTask;->mKey:Ljava/lang/String;

    .line 221
    iput-object p2, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCachePutTask;->mContent:[B

    .line 222
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 215
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/common/CacheService$DiskLruCachePutTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCachePutTask;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/fusepowered/m2/common/CacheService$DiskLruCachePutTask;->mContent:[B

    invoke-static {v0, v1}, Lcom/fusepowered/m2/common/CacheService;->putToDiskCache(Ljava/lang/String;[B)Z

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method
