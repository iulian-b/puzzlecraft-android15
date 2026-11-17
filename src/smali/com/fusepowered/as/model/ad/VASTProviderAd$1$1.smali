.class Lcom/fusepowered/as/model/ad/VASTProviderAd$1$1;
.super Ljava/lang/Object;
.source "VASTProviderAd.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/model/ad/VASTProviderAd$1;->onHttpTaskSuccess(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/model/ad/VASTProviderAd$1;

.field final synthetic val$VASTWrapperResults:Lcom/fusepowered/as/model/vast/VAST;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/model/ad/VASTProviderAd$1;Lcom/fusepowered/as/model/vast/VAST;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1$1;->this$0:Lcom/fusepowered/as/model/ad/VASTProviderAd$1;

    iput-object p2, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1$1;->val$VASTWrapperResults:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrapperCallFailed()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1$1;->this$0:Lcom/fusepowered/as/model/ad/VASTProviderAd$1;

    iget-object v0, v0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1;->val$vastWrapperCallerListener:Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;->wrapperCallFailed()V

    .line 140
    return-void
.end method

.method public wrapperResultsReceived(Lcom/fusepowered/as/model/vast/VAST;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1$1;->val$VASTWrapperResults:Lcom/fusepowered/as/model/vast/VAST;

    invoke-virtual {v0, p1}, Lcom/fusepowered/as/model/vast/VAST;->setWrappedVast(Lcom/fusepowered/as/model/vast/VAST;)V

    .line 134
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1$1;->this$0:Lcom/fusepowered/as/model/ad/VASTProviderAd$1;

    iget-object v0, v0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1;->val$vastWrapperCallerListener:Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;

    iget-object v1, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd$1$1;->val$VASTWrapperResults:Lcom/fusepowered/as/model/vast/VAST;

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;->wrapperResultsReceived(Lcom/fusepowered/as/model/vast/VAST;)V

    .line 135
    return-void
.end method
