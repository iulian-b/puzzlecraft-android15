.class final Lcom/fusepowered/m2/common/CloseableLayout$UnsetPressedState;
.super Ljava/lang/Object;
.source "CloseableLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/common/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnsetPressedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/common/CloseableLayout;


# direct methods
.method private constructor <init>(Lcom/fusepowered/m2/common/CloseableLayout;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/fusepowered/m2/common/CloseableLayout$UnsetPressedState;->this$0:Lcom/fusepowered/m2/common/CloseableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m2/common/CloseableLayout;Lcom/fusepowered/m2/common/CloseableLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/m2/common/CloseableLayout;
    .param p2, "x1"    # Lcom/fusepowered/m2/common/CloseableLayout$1;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/common/CloseableLayout$UnsetPressedState;-><init>(Lcom/fusepowered/m2/common/CloseableLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/fusepowered/m2/common/CloseableLayout$UnsetPressedState;->this$0:Lcom/fusepowered/m2/common/CloseableLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/m2/common/CloseableLayout;->access$100(Lcom/fusepowered/m2/common/CloseableLayout;Z)V

    .line 273
    return-void
.end method
