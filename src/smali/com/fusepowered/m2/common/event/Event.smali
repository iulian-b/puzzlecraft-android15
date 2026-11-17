.class public Lcom/fusepowered/m2/common/event/Event;
.super Lcom/fusepowered/m2/common/event/BaseEvent;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/common/event/Event$1;,
        Lcom/fusepowered/m2/common/event/Event$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/fusepowered/m2/common/event/Event$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/fusepowered/m2/common/event/Event$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/common/event/BaseEvent;-><init>(Lcom/fusepowered/m2/common/event/BaseEvent$Builder;)V

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m2/common/event/Event$Builder;Lcom/fusepowered/m2/common/event/Event$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/m2/common/event/Event$Builder;
    .param p2, "x1"    # Lcom/fusepowered/m2/common/event/Event$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/common/event/Event;-><init>(Lcom/fusepowered/m2/common/event/Event$Builder;)V

    return-void
.end method
