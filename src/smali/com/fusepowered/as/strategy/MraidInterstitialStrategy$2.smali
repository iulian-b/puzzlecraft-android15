.class Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$2;
.super Ljava/lang/Object;
.source "MraidInterstitialStrategy.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/SetVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->buildInterstitialPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$2;->this$0:Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVisibility(Z)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$2;->this$0:Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->access$100(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/CloseButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/as/view/component/CloseButton;->setVisibility(Z)V

    .line 105
    return-void
.end method
