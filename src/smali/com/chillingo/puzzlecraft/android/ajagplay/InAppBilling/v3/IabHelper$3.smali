.class Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;Ljava/util/List;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    iput-object p2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->val$singleListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->val$multiListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 979
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 980
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;>;"
    iget-object v3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;

    .line 982
    .local v1, "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    :try_start_0
    iget-object v4, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    invoke-virtual {v4, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->consume(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    .line 983
    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successful consume of sku "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "ex":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;
    invoke-virtual {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;->getResult()Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 990
    .end local v0    # "ex":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabException;
    .end local v1    # "purchase":Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;
    :cond_0
    iget-object v3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    invoke-virtual {v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagEndAsync()V

    .line 991
    iget-object v3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    iget-boolean v3, v3, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDisposed:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->val$singleListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;

    if-eqz v3, :cond_1

    .line 992
    iget-object v3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3$1;

    invoke-direct {v4, p0, v2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3$1;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 998
    :cond_1
    iget-object v3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->this$0:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    iget-boolean v3, v3, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->mDisposed:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->val$multiListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v3, :cond_2

    .line 999
    iget-object v3, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3$2;

    invoke-direct {v4, p0, v2}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3$2;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1005
    :cond_2
    return-void
.end method
