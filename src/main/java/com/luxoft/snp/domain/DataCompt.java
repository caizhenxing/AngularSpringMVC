package com.luxoft.snp.domain;


import javax.persistence.*;

@Entity
@Table(name="DATA_COMPT")
public class DataCompt {


    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="DATA_COMPT_ID", unique = true, nullable=false)
    private int id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="COMPT_ID_FK", nullable=false)
    private Compt compt;


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="STATIC_DATA_ID_FK", nullable=false)
    private StaticData staticData;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="STATE_ID_FK", nullable=false)
    private State state;

    @Column(name="CHECKED", nullable=false, length=1)
    private int checked;



    public DataCompt() {

    }

    public DataCompt(Compt compt, StaticData staticData, State state, int selected) {
        this.compt = compt;
        this.staticData = staticData;

        this.state = state;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public StaticData getStaticData() {
        return staticData;
    }

    public void setStaticData(StaticData staticData) {
        this.staticData = staticData;
    }

    public Compt getCompt() {
        return compt;
    }

    public void setCompt(Compt compt) {
        this.compt = compt;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }

    public int getChecked() {
        return checked;
    }

    public void setChecked(int checked) {
        this.checked = checked;
    }

}
