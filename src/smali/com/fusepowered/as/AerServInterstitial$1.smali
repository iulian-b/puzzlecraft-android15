.class Lcom/fusepowered/as/AerServInterstitial$1;
.super Ljava/lang/Object;
.source "AerServInterstitial.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/SaveShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/as/AerServInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/AerServInterstitial;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/AerServInterstitial;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fusepowered/as/AerServInterstitial$1;->this$0:Lcom/fusepowered/as/AerServInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveShow(Lcom/fusepowered/as/controller/listener/ShowListener;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial$1;->this$0:Lcom/fusepowered/as/AerServInterstitial;

    invoke-static {v0, p1}, Lcom/fusepowered/as/AerServInterstitial;->access$002(Lcom/fusepowered/as/AerServInterstitial;Lcom/fusepowered/as/controller/listener/ShowListener;)Lcom/fusepowered/as/controller/listener/ShowListener;

    .line 25
    return-void
.end method
