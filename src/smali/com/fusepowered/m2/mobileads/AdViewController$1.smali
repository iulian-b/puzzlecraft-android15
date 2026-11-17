.class Lcom/fusepowered/m2/mobileads/AdViewController$1;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Lcom/fusepowered/m2/network/AdRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/AdViewController;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/MoPubView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/AdViewController;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/AdViewController;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/AdViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/fusepowered/m2/volley/VolleyError;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/AdViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdViewController;->onAdLoadError(Lcom/fusepowered/m2/volley/VolleyError;)V

    .line 121
    return-void
.end method

.method public onSuccess(Lcom/fusepowered/m2/network/AdResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/fusepowered/m2/network/AdResponse;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/AdViewController$1;->this$0:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdViewController;->onAdLoadSuccess(Lcom/fusepowered/m2/network/AdResponse;)V

    .line 116
    return-void
.end method
