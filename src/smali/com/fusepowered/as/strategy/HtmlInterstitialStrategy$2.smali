.class Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$2;
.super Ljava/lang/Object;
.source "HtmlInterstitialStrategy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->registerEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$2;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$2;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->access$200(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_DISMISSED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 134
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$2;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->access$000(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFinished()V

    .line 137
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$2;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->access$100(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->finish()V

    .line 138
    return-void
.end method
