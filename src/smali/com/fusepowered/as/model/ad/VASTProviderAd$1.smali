.class final Lcom/fusepowered/as/model/ad/VASTProviderAd$1;
.super Ljava/lang/Object;
.source "VASTProviderAd.java"

# interfaces
.implements Lcom/fusepowered/as/http/HttpTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/model/ad/VASTProviderAd;->followVastWrapper(Lcom/fusepowered/as/model/vast/VAST;Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$vastWrapperCallerListener:Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1;->val$vastWrapperCallerListener:Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpTaskFailure(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1;->val$vastWrapperCallerListener:Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;->wrapperCallFailed()V

    .line 163
    return-void
.end method

.method public onHttpTaskSuccess(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    invoke-static {p4}, Lcom/fusepowered/as/model/vast/VAST;->parseXml(Ljava/lang/String;)Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Lcom/fusepowered/as/model/ad/VASTProviderAd$1$1;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd$1$1;-><init>(Lcom/fusepowered/as/model/ad/VASTProviderAd$1;Lcom/fusepowered/as/model/vast/VAST;)V

    invoke-static {v0, v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->access$000(Lcom/fusepowered/as/model/vast/VAST;Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;)V

    .line 158
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const-class v0, Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Empty VAST.  Executing fallback."

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1;->val$vastWrapperCallerListener:Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;->wrapperCallFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an error unwrapping vast.  unwrapped vast does not conform to spec"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 155
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1;->val$vastWrapperCallerListener:Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;->wrapperCallFailed()V

    goto :goto_0

    .line 149
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1;->val$vastWrapperCallerListener:Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;

    invoke-interface {v1, v0}, Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;->wrapperResultsReceived(Lcom/fusepowered/as/model/vast/VAST;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
