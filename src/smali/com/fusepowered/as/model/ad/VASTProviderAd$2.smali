.class final Lcom/fusepowered/as/model/ad/VASTProviderAd$2;
.super Ljava/lang/Object;
.source "VASTProviderAd.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/model/ad/VASTProviderAd;->buildVASTAd(Ljava/util/Map;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adFactoryListener:Lcom/fusepowered/as/controller/listener/AdFactoryListener;

.field final synthetic val$vastAd:Lcom/fusepowered/as/model/ad/VASTProviderAd;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/model/ad/VASTProviderAd;Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$2;->val$vastAd:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    iput-object p2, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$2;->val$adFactoryListener:Lcom/fusepowered/as/controller/listener/AdFactoryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrapperCallFailed()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$2;->val$adFactoryListener:Lcom/fusepowered/as/controller/listener/AdFactoryListener;

    const-string v1, "Could not build the wrapped VAST.  Most likely it\'s poorly formatted."

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/AdFactoryListener;->adBuildFailed(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public wrapperResultsReceived(Lcom/fusepowered/as/model/vast/VAST;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$2;->val$vastAd:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-static {v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->access$100(Lcom/fusepowered/as/model/ad/VASTProviderAd;)Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/as/model/vast/VAST;->setWrappedVast(Lcom/fusepowered/as/model/vast/VAST;)V

    .line 410
    const-class v0, Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VAST wrapper successfully traversed"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$2;->val$vastAd:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    iget-object v1, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$2;->val$adFactoryListener:Lcom/fusepowered/as/controller/listener/AdFactoryListener;

    invoke-static {v0, v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->access$200(Lcom/fusepowered/as/model/ad/VASTProviderAd;Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V

    .line 413
    return-void
.end method
