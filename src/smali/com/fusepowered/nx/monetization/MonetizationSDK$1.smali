.class Lcom/fusepowered/nx/monetization/MonetizationSDK$1;
.super Ljava/lang/Object;
.source "MonetizationSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/MonetizationSDK;->fetchAdvertiserInfoAndCreateSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/MonetizationSDK;

.field final synthetic val$listener:Lcom/fusepowered/nx/monetization/listeners/SessionListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/MonetizationSDK;Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/MonetizationSDK;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/MonetizationSDK$1;->this$0:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/MonetizationSDK$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    :try_start_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 280
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 281
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/MonetizationSDK$1;->this$0:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->access$000(Lcom/fusepowered/nx/monetization/MonetizationSDK;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/MonetizationSDK$1;->this$0:Lcom/fusepowered/nx/monetization/MonetizationSDK;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/MonetizationSDK$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/SessionListener;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/MonetizationSDK;->continueWithCreateSession(Lcom/fusepowered/nx/monetization/listeners/SessionListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 295
    :goto_1
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "MonetizationSDK: Google Play services jar not found."

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 284
    invoke-static {v2}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setAdvertiserId(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unhandled exception"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    invoke-static {v2}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->setAdvertiserId(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 293
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Unhandled exception"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
