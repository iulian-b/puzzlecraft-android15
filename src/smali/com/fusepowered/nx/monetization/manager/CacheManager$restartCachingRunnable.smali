.class Lcom/fusepowered/nx/monetization/manager/CacheManager$restartCachingRunnable;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/manager/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "restartCachingRunnable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/nx/monetization/manager/CacheManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/nx/monetization/manager/CacheManager$1;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/manager/CacheManager$restartCachingRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->access$100()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unhandled exception"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
