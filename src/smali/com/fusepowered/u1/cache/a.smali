.class final synthetic Lcom/fusepowered/u1/cache/a;
.super Ljava/lang/Object;
.source "UnityAdsDownloader.java"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/fusepowered/u1/cache/c;->values()[Lcom/fusepowered/u1/cache/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fusepowered/u1/cache/a;->a:[I

    :try_start_0
    sget-object v0, Lcom/fusepowered/u1/cache/a;->a:[I

    sget-object v1, Lcom/fusepowered/u1/cache/c;->DownloadCompleted:Lcom/fusepowered/u1/cache/c;

    invoke-virtual {v1}, Lcom/fusepowered/u1/cache/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/fusepowered/u1/cache/a;->a:[I

    sget-object v1, Lcom/fusepowered/u1/cache/c;->DownloadCancelled:Lcom/fusepowered/u1/cache/c;

    invoke-virtual {v1}, Lcom/fusepowered/u1/cache/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
