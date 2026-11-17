.class public Lcom/fusepowered/as/controller/command/FireEventCommand;
.super Ljava/lang/Object;
.source "FireEventCommand.java"

# interfaces
.implements Lcom/fusepowered/as/controller/command/Command;


# instance fields
.field private event:Ljava/lang/String;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackingEvent:Lcom/fusepowered/as/model/vast/TrackingEvent;

.field private trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;


# direct methods
.method public constructor <init>(Lcom/fusepowered/as/model/vast/TrackingEvent;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->trackingEvent:Lcom/fusepowered/as/model/vast/TrackingEvent;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->event:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->events:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->trackingEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/TrackingEvent;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getTrackingUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v2, Lcom/fusepowered/as/http/HttpTask;

    invoke-direct {v2, v7}, Lcom/fusepowered/as/http/HttpTask;-><init>(Lcom/fusepowered/as/http/HttpTaskListener;)V

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getTrackingUri()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/http/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->trackingEvent:Lcom/fusepowered/as/model/vast/TrackingEvent;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->trackingEvent:Lcom/fusepowered/as/model/vast/TrackingEvent;

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getTrackingUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/fusepowered/as/http/HttpTask;

    invoke-direct {v0, v7}, Lcom/fusepowered/as/http/HttpTask;-><init>(Lcom/fusepowered/as/http/HttpTaskListener;)V

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->trackingEvent:Lcom/fusepowered/as/model/vast/TrackingEvent;

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/TrackingEvent;->getTrackingUri()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/http/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->events:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v2, Lcom/fusepowered/as/http/HttpTask;

    invoke-direct {v2, v7}, Lcom/fusepowered/as/http/HttpTask;-><init>(Lcom/fusepowered/as/http/HttpTaskListener;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/fusepowered/as/http/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->event:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->event:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/fusepowered/as/http/HttpTask;

    invoke-direct {v0, v7}, Lcom/fusepowered/as/http/HttpTask;-><init>(Lcom/fusepowered/as/http/HttpTaskListener;)V

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fusepowered/as/controller/command/FireEventCommand;->event:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/http/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    :cond_3
    return-void
.end method
