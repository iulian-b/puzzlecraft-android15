.class Lcom/fusepowered/as/AerServBanner$1;
.super Ljava/lang/Object;
.source "AerServBanner.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/SaveShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/as/AerServBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/AerServBanner;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/AerServBanner;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fusepowered/as/AerServBanner$1;->this$0:Lcom/fusepowered/as/AerServBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveShow(Lcom/fusepowered/as/controller/listener/ShowListener;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner$1;->this$0:Lcom/fusepowered/as/AerServBanner;

    invoke-static {v0, p1}, Lcom/fusepowered/as/AerServBanner;->access$002(Lcom/fusepowered/as/AerServBanner;Lcom/fusepowered/as/controller/listener/ShowListener;)Lcom/fusepowered/as/controller/listener/ShowListener;

    .line 38
    return-void
.end method
