.class Lcom/fusepowered/m2/mobileads/MraidActivity$3;
.super Ljava/lang/Object;
.source "MraidActivity.java"

# interfaces
.implements Lcom/fusepowered/m2/mraid/MraidController$UseCustomCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/M2RActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/M2RActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/M2RActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MraidActivity$3;->this$0:Lcom/fusepowered/m2/mobileads/M2RActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public useCustomCloseChanged(Z)V
    .locals 1
    .param p1, "useCustomClose"    # Z

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MraidActivity$3;->this$0:Lcom/fusepowered/m2/mobileads/M2RActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/M2RActivity;->hideInterstitialCloseButton()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MraidActivity$3;->this$0:Lcom/fusepowered/m2/mobileads/M2RActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/M2RActivity;->showInterstitialCloseButton()V

    goto :goto_0
.end method
