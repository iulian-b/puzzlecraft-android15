.class final Lcom/fusepowered/u1/webapp/h;
.super Ljava/lang/Object;
.source "UnityAdsWebData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/webapp/UnityAdsWebData;

.field private b:Lcom/fusepowered/u1/webapp/j;


# direct methods
.method public constructor <init>(Lcom/fusepowered/u1/webapp/UnityAdsWebData;Lcom/fusepowered/u1/webapp/j;)V
    .locals 1

    .prologue
    .line 880
    iput-object p1, p0, Lcom/fusepowered/u1/webapp/h;->a:Lcom/fusepowered/u1/webapp/UnityAdsWebData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/u1/webapp/h;->b:Lcom/fusepowered/u1/webapp/j;

    .line 881
    iput-object p2, p0, Lcom/fusepowered/u1/webapp/h;->b:Lcom/fusepowered/u1/webapp/j;

    .line 882
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/u1/webapp/h;->b:Lcom/fusepowered/u1/webapp/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/u1/webapp/j;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancelling urlLoader got exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/u1/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
